import { PrismaClient } from "@prisma/client";

async function main() {
  const prisma = new PrismaClient();

  const data = await prisma.post.findMany({
    take: 6,
    where: {
      published: false,
    },
    orderBy: {
      createdAt: "desc",
    },
    cursor: {
      id: "cks4aalgn00005ofjja1xdcg5",
    },
    skip: 1,
    select: {
      id: true,
      title: true,
      _count: {
        select: {
          comments: true,
        },
      },
    },
  });
  console.log(data);
  prisma.$disconnect();
}

main();
