// question_util.dart
import 'question_page.dart'; // Import the Question class if needed

class QuestionUtil {
  static List<Question> getQuestionsForPage(String pageTitle) {
    switch (pageTitle) {
      case 'Promoters':
        return [
          Question(
            text: 'How committed is the business owner or management to exportation?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How realistic is the desire of the business owner or management to sell in foreign markets?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How experienced and familiar is the business owner or management with international business?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'Has the business owner or management any skills to manage export transactions?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How willing and ready is the business owner or management to fund export transactions?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 1...
        ];
      case 'Products':
        return [
          Question(
            text: 'Are you familiar with the clear advantages that your product has over competing products?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How satisfied are you about the resilience of your product to withstand the stress of freight and widely varying environmental conditions in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How easy is it for anyone to use your company\'s product in the export market without any technical support?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the ease of adapting your product quality to make it suitable for the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the quality of your product packaging and the conformity of the product’s labeling to requirements in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 2...
        ];
      case 'Pricing':
        return [
          Question(
            text: 'How competitive is the price of your product in the local market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How satisfied are you on the impact of economy of scale on cost reduction?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe your company\'s access to information on the cost elements in exportation and how to reduce them?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe your company’s access to information about competitors\' prices in export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe your understanding of strategies for cost reduction in export business?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 3...
        ];
      case 'Predisposition':
        return [
          Question(
            text: 'How will you describe the exposure and familiarity of the staff of your company to exportation?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'What number of staff of the company has worked abroad?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'What number of staff of the company schooled abroad?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the number of staff of the company that has traveled abroad for holidays?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'What number of staff of the company can speak an international/foreign language?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 4...
        ];
      case 'Purpose':
        return [
          Question(
            text: 'How do you evaluate the desire of the business to build a global brand?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How do you evaluate the desire of the business to access government incentives?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How do you evaluate the desire of the business to take advantage of the benefits presented by free trade agreements?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How do you evaluate the desire of the business to use export business as a survival strategy?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How do you evaluate the desire of the business to earn foreign currency?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 5...
        ];
      case 'Payment':
        return [
          Question(
            text: 'How will you describe the capacity of the factory to handle 4 demand in export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the logistics in place to move large volume of goods to export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the excess capacity of the production factory?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the ease of access to inventory to fulfil a surge in demand?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the likelihood of the business to get partners for contract manufacturing?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 5...
        ];
      case 'Production':
        return [
          Question(
            text: 'HHow will you describe the capacity of the factory to handle 4 demand in export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the logistics in place to move large volume of goods to export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the excess capacity of the production factory?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the ease of access to inventory to fulfil a surge in demand?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the likelihood of the business to get partners for contract manufacturing?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 5...
        ];
      case 'Positioning':
        return [
          Question(
            text: 'How will you evaluate the goodwill (reputation) possessed by the business both locally and abroad?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate the share of the business in the domestic market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate the level of unsolicited export orders receive by the business?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate the level of foreign affiliates in the network of your firm’s local partners?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate the loyalty of your customer to your business offering in the local market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 5...
        ];
      case 'Proficiency':
        return [
          Question(
            text: 'How will you describe the level of skill of the staff of your company in international marketing?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the level of expertise of the company’s staff in mitigating export risk?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the level of cultural intelligence possessed by the company’s staff?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe the level of understanding of payment methods (like letter of credit and bill for collection) by the company’s staff?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you describe in general the level of competence of company’s personnel in export business management?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 5...
        ];
      case 'People':
        return [
          Question(
            text: 'How will you evaluate your company\'s understanding of the demography of the consumer of its products in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will evaluate your compan\'s understanding of why consumers currently buy competing products in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company\'s understanding of the purchasing power of the consumer in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company\'s understanding of the packaging requirements of consumers in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company\'s understanding of the labelling requirements of the consumers in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 10 - People...
        ];
      case 'Paperwork':
        return [
          Question(
            text: 'How will you appraise your company’s understanding of product quality documentation in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your company’s understanding of the documentation requirements under a free trade agreement like AfCFTA?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your company’s understanding of pre & post import documentation in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your company’s understanding of home country’s pre and post-export documentation requirements?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your company’s understanding of what constitutes document discrepancies in export trade?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 10 - People...
        ];
      case 'Potentials':
        return [
          Question(
            text: 'How will you evaluate your company’s understanding of the African markets size for your products?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company’s understanding of the global markets size for your products?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company’s understanding of the global trend of demand for your products?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company’s understanding of the drivers of demand for your products in the export markets?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your company’s understanding of the emerging markets for your products?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 10 - People...
        ];
      case 'Promotion':
        return [
          Question(
            text: 'How will you appraise your understanding of how to reach your buyers in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your ability to obtain export market intelligence report for your products?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your understanding of the usage of global online trade portals?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your understanding of international promotion on social media platforms?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your understanding of the components of international marketing?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 10 - People...
        ];
      case 'Purchasers':
        return [
          Question(
            text: 'How will appraise your level of awareness and understanding of the different export market entry strategies?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your understanding of the right strategy for your target export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you appraise your ability to setup distribution channels in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your understanding of market structure in the targeted export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you evaluate your understanding of the challenge of distribution in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 10 - People...
        ];
      case 'Partnership':
        return [
          Question(
            text: 'How will you rate your business network in markets abroad?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you rate your capacity to get an agent in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you rate your capacity to get a distributor in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'HHow will you rate ability to source for business partners in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          Question(
            text: 'How will you rate your ability to get service providers in the export market?',
            options: ['Very Low', 'Low', 'Indifferent', 'High', 'Very High'],
          ),
          // Add more questions for Page 10 - People...
        ];
    // Add more cases for other pages...
      default:
        return [];

    }
    }
}
