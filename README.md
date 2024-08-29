# spring-boot-demo

Spring Boot 示例，基础框架基于 Spring Boot 2，数据持久化框架基于 Mybatis Plus。

- 配套前端工程见 [pc-web-demo](https://gitee.com/xiaohudu/pc-web-demo)

## 准备

- `JDK 1.8` - Java 开发环境
- `MySQL 5.7` - 关系型数据库
- `Redis` - 非关系型数据库
- `IDEA` - Java 开发工具

## 开发流程

1. 克隆工程到本地
    ```bash
    git clone https://gitee.com/xiaohudu/spring-boot-demo.git
    ```
2. 导入工程到 IDEA 中
3. Mysql 中新建 spring_boot_demo 数据库，然后通过目录 db 下脚本初始化 Mysql 数据
4. 在目录 src/main/resources 下参考 application-local-example.yml 根据实际情况新建 application-local.yml 配置文件
5. IDEA 中启动工程

## 更多

基础框架 [Spring Boot 2](https://spring.io/projects/spring-boot).  
数据持久化框架 [Mybatis Plus](https://baomidou.com/). 
