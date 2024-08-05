package com.example;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/upload")
@MultipartConfig
public class UploadServlet extends HttpServlet {
	private static final String UPLOAD_DIR = "uploads";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String applicationPath = request.getServletContext().getRealPath("");
		String uploadPath = applicationPath + File.separator + UPLOAD_DIR;

		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists())
			uploadDir.mkdir();

		for (Part part : request.getParts()) {
			String fileName = part.getSubmittedFileName();
			part.write(uploadPath + File.separator + fileName);
		}

		response.getWriter().println("File uploaded successfully!");
	}
}
