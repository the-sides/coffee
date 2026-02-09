import { Client } from "@notionhq/client"

// Initializing a client
const notion = new Client({
  auth: process.env.NOTION_TOKEN,
})

const datasources = await notion.dataSources.query(({ data_source_id: process.env.NOTION_DATASOURCE as string }))

console.log(datasources)

