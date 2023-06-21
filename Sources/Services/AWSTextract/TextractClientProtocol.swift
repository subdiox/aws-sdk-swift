// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Textract detects and analyzes text in documents and converts it into machine-readable text. This is the API reference documentation for Amazon Textract.
public protocol TextractClientProtocol {
    /// Analyzes an input document for relationships between detected items. The types of information returned are as follows:
    ///
    /// * Form data (key-value pairs). The related information is returned in two [Block] objects, each of type KEY_VALUE_SET: a KEY Block object and a VALUE Block object. For example, Name: Ana Silva Carolina contains a key and value. Name: is the key. Ana Silva Carolina is the value.
    ///
    /// * Table and table cell data. A TABLE Block object contains information about a detected table. A CELL Block object is returned for each cell in a table.
    ///
    /// * Lines and words of text. A LINE Block object contains one or more WORD Block objects. All lines and words that are detected in the document are returned (including text that doesn't have a relationship with the value of FeatureTypes).
    ///
    /// * Signatures. A SIGNATURE Block object contains the location information of a signature in a document. If used in conjunction with forms or tables, a signature can be given a Key-Value pairing or be detected in the cell of a table.
    ///
    /// * Query. A QUERY Block object contains the query text, alias and link to the associated Query results block object.
    ///
    /// * Query Result. A QUERY_RESULT Block object contains the answer to the query and an ID that connects it to the query asked. This Block also contains a confidence score.
    ///
    ///
    /// Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables. A SELECTION_ELEMENT Block object contains information about a selection element, including the selection status. You can choose which type of analysis to perform by specifying the FeatureTypes list. The output is returned in a list of Block objects. AnalyzeDocument is a synchronous operation. To analyze documents asynchronously, use [StartDocumentAnalysis]. For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
    func analyzeDocument(input: AnalyzeDocumentInput) async throws -> AnalyzeDocumentOutputResponse
    /// AnalyzeExpense synchronously analyzes an input document for financially related relationships between text. Information is returned as ExpenseDocuments and seperated as follows:
    ///
    /// * LineItemGroups- A data set containing LineItems which store information about the lines of text, such as an item purchased and its price on a receipt.
    ///
    /// * SummaryFields- Contains all other information a receipt, such as header information or the vendors name.
    func analyzeExpense(input: AnalyzeExpenseInput) async throws -> AnalyzeExpenseOutputResponse
    /// Analyzes identity documents for relevant information. This information is extracted and returned as IdentityDocumentFields, which records both the normalized field and value of the extracted text. Unlike other Amazon Textract operations, AnalyzeID doesn't return any Geometry data.
    func analyzeID(input: AnalyzeIDInput) async throws -> AnalyzeIDOutputResponse
    /// Detects text in the input document. Amazon Textract can detect lines of text and the words that make up a line of text. The input document must be in one of the following image formats: JPEG, PNG, PDF, or TIFF. DetectDocumentText returns the detected text in an array of [Block] objects. Each document page has as an associated Block of type PAGE. Each PAGE Block object is the parent of LINE Block objects that represent the lines of detected text on a page. A LINE Block object is a parent for each word that makes up the line. Words are represented by Block objects of type WORD. DetectDocumentText is a synchronous operation. To analyze documents asynchronously, use [StartDocumentTextDetection]. For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
    func detectDocumentText(input: DetectDocumentTextInput) async throws -> DetectDocumentTextOutputResponse
    /// Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document. You start asynchronous text analysis by calling [StartDocumentAnalysis], which returns a job identifier (JobId). When the text analysis operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to StartDocumentAnalysis. To get the results of the text-detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetDocumentAnalysis, and pass the job identifier (JobId) from the initial call to StartDocumentAnalysis. GetDocumentAnalysis returns an array of [Block] objects. The following types of information are returned:
    ///
    /// * Form data (key-value pairs). The related information is returned in two [Block] objects, each of type KEY_VALUE_SET: a KEY Block object and a VALUE Block object. For example, Name: Ana Silva Carolina contains a key and value. Name: is the key. Ana Silva Carolina is the value.
    ///
    /// * Table and table cell data. A TABLE Block object contains information about a detected table. A CELL Block object is returned for each cell in a table.
    ///
    /// * Lines and words of text. A LINE Block object contains one or more WORD Block objects. All lines and words that are detected in the document are returned (including text that doesn't have a relationship with the value of the StartDocumentAnalysisFeatureTypes input parameter).
    ///
    /// * Query. A QUERY Block object contains the query text, alias and link to the associated Query results block object.
    ///
    /// * Query Results. A QUERY_RESULT Block object contains the answer to the query and an ID that connects it to the query asked. This Block also contains a confidence score.
    ///
    ///
    /// While processing a document with queries, look out for INVALID_REQUEST_PARAMETERS output. This indicates that either the per page query limit has been exceeded or that the operation is trying to query a page in the document which doesn’t exist. Selection elements such as check boxes and option buttons (radio buttons) can be detected in form data and in tables. A SELECTION_ELEMENT Block object contains information about a selection element, including the selection status. Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetDocumentAnalysis, and populate the NextToken request parameter with the token value that's returned from the previous call to GetDocumentAnalysis. For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
    func getDocumentAnalysis(input: GetDocumentAnalysisInput) async throws -> GetDocumentAnalysisOutputResponse
    /// Gets the results for an Amazon Textract asynchronous operation that detects text in a document. Amazon Textract can detect lines of text and the words that make up a line of text. You start asynchronous text detection by calling [StartDocumentTextDetection], which returns a job identifier (JobId). When the text detection operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to StartDocumentTextDetection. To get the results of the text-detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetDocumentTextDetection, and pass the job identifier (JobId) from the initial call to StartDocumentTextDetection. GetDocumentTextDetection returns an array of [Block] objects. Each document page has as an associated Block of type PAGE. Each PAGE Block object is the parent of LINE Block objects that represent the lines of detected text on a page. A LINE Block object is a parent for each word that makes up the line. Words are represented by Block objects of type WORD. Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetDocumentTextDetection, and populate the NextToken request parameter with the token value that's returned from the previous call to GetDocumentTextDetection. For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
    func getDocumentTextDetection(input: GetDocumentTextDetectionInput) async throws -> GetDocumentTextDetectionOutputResponse
    /// Gets the results for an Amazon Textract asynchronous operation that analyzes invoices and receipts. Amazon Textract finds contact information, items purchased, and vendor name, from input invoices and receipts. You start asynchronous invoice/receipt analysis by calling [StartExpenseAnalysis], which returns a job identifier (JobId). Upon completion of the invoice/receipt analysis, Amazon Textract publishes the completion status to the Amazon Simple Notification Service (Amazon SNS) topic. This topic must be registered in the initial call to StartExpenseAnalysis. To get the results of the invoice/receipt analysis operation, first ensure that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetExpenseAnalysis, and pass the job identifier (JobId) from the initial call to StartExpenseAnalysis. Use the MaxResults parameter to limit the number of blocks that are returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetExpenseAnalysis, and populate the NextToken request parameter with the token value that's returned from the previous call to GetExpenseAnalysis. For more information, see [Analyzing Invoices and Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html).
    func getExpenseAnalysis(input: GetExpenseAnalysisInput) async throws -> GetExpenseAnalysisOutputResponse
    /// Gets the results for an Amazon Textract asynchronous operation that analyzes text in a lending document. You start asynchronous text analysis by calling StartLendingAnalysis, which returns a job identifier (JobId). When the text analysis operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to StartLendingAnalysis. To get the results of the text analysis operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetLendingAnalysis, and pass the job identifier (JobId) from the initial call to StartLendingAnalysis.
    func getLendingAnalysis(input: GetLendingAnalysisInput) async throws -> GetLendingAnalysisOutputResponse
    /// Gets summarized results for the StartLendingAnalysis operation, which analyzes text in a lending document. The returned summary consists of information about documents grouped together by a common document type. Information like detected signatures, page numbers, and split documents is returned with respect to the type of grouped document. You start asynchronous text analysis by calling StartLendingAnalysis, which returns a job identifier (JobId). When the text analysis operation finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to StartLendingAnalysis. To get the results of the text analysis operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetLendingAnalysisSummary, and pass the job identifier (JobId) from the initial call to StartLendingAnalysis.
    func getLendingAnalysisSummary(input: GetLendingAnalysisSummaryInput) async throws -> GetLendingAnalysisSummaryOutputResponse
    /// Starts the asynchronous analysis of an input document for relationships between detected items such as key-value pairs, tables, and selection elements. StartDocumentAnalysis can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use [DocumentLocation] to specify the bucket name and file name of the document. StartDocumentAnalysis returns a job identifier (JobId) that you use to get the results of the operation. When text analysis is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in NotificationChannel. To get the results of the text analysis operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call [GetDocumentAnalysis], and pass the job identifier (JobId) from the initial call to StartDocumentAnalysis. For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
    func startDocumentAnalysis(input: StartDocumentAnalysisInput) async throws -> StartDocumentAnalysisOutputResponse
    /// Starts the asynchronous detection of text in a document. Amazon Textract can detect lines of text and the words that make up a line of text. StartDocumentTextDetection can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon S3 bucket. Use [DocumentLocation] to specify the bucket name and file name of the document. StartTextDetection returns a job identifier (JobId) that you use to get the results of the operation. When text detection is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in NotificationChannel. To get the results of the text detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call [GetDocumentTextDetection], and pass the job identifier (JobId) from the initial call to StartDocumentTextDetection. For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
    func startDocumentTextDetection(input: StartDocumentTextDetectionInput) async throws -> StartDocumentTextDetectionOutputResponse
    /// Starts the asynchronous analysis of invoices or receipts for data like contact information, items purchased, and vendor names. StartExpenseAnalysis can analyze text in documents that are in JPEG, PNG, and PDF format. The documents must be stored in an Amazon S3 bucket. Use the [DocumentLocation] parameter to specify the name of your S3 bucket and the name of the document in that bucket. StartExpenseAnalysis returns a job identifier (JobId) that you will provide to GetExpenseAnalysis to retrieve the results of the operation. When the analysis of the input invoices/receipts is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you provide to the NotificationChannel. To obtain the results of the invoice and receipt analysis operation, ensure that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call [GetExpenseAnalysis], and pass the job identifier (JobId) that was returned by your call to StartExpenseAnalysis. For more information, see [Analyzing Invoices and Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html).
    func startExpenseAnalysis(input: StartExpenseAnalysisInput) async throws -> StartExpenseAnalysisOutputResponse
    /// Starts the classification and analysis of an input document. StartLendingAnalysis initiates the classification and analysis of a packet of lending documents. StartLendingAnalysis operates on a document file located in an Amazon S3 bucket. StartLendingAnalysis can analyze text in documents that are in one of the following formats: JPEG, PNG, TIFF, PDF. Use DocumentLocation to specify the bucket name and the file name of the document. StartLendingAnalysis returns a job identifier (JobId) that you use to get the results of the operation. When the text analysis is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that you specify in NotificationChannel. To get the results of the text analysis operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If the status is SUCCEEDED you can call either GetLendingAnalysis or GetLendingAnalysisSummary and provide the JobId to obtain the results of the analysis. If using OutputConfig to specify an Amazon S3 bucket, the output will be contained within the specified prefix in a directory labeled with the job-id. In the directory there are 3 sub-directories:
    ///
    /// * detailedResponse (contains the GetLendingAnalysis response)
    ///
    /// * summaryResponse (for the GetLendingAnalysisSummary response)
    ///
    /// * splitDocuments (documents split across logical boundaries)
    func startLendingAnalysis(input: StartLendingAnalysisInput) async throws -> StartLendingAnalysisOutputResponse
}

public enum TextractClientTypes {}
