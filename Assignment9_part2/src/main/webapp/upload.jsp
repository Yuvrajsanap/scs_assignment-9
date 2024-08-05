<%@ page import="java.io.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
<%
    try {
        Part filePart = request.getPart("file"); // Retrieves the file part from the request
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = filePart.getSubmittedFileName(); // Gets the file name
            InputStream fileContent = filePart.getInputStream(); // Gets the input stream of the file content
            File file = new File("C:/Users/yuvra/Documents/BE project/109.ys.docx" + fileName); // Creates a new file at the specified path
            FileOutputStream outputStream = new FileOutputStream(file); // Creates an output stream to write the file

            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = fileContent.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead); // Writes the bytes to the file
            }

            fileContent.close();
            outputStream.close();

            out.println("<h1>File uploaded successfully: " + fileName + "</h1>");
        } else {
            out.println("<h1>No file selected for upload</h1>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h1>Error occurred: " + e.getMessage() + "</h1>");
    }
%>
</body>
</html>
