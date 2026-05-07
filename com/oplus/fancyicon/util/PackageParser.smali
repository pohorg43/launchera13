.class public Lcom/oplus/fancyicon/util/PackageParser;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PackageParser"

.field private static final PACKAGE_XML_PATH:Ljava/lang/String; = "system/media/theme/default/packages.xml"

.field private static sPackageAttributes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntentCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/command/IntentCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/util/PackageParser;->sPackageAttributes:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addIntentCommand(Lcom/oplus/fancyicon/command/IntentCommand;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 14

    const-string v0, "IOException "

    const-string v1, "PackageParser"

    const/4 v2, 0x0

    :try_start_5
    sget-object v3, Lcom/oplus/fancyicon/util/PackageParser;->sPackageAttributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_63

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "system/media/theme/default/packages.xml"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_14} :catch_169
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_14} :catch_13f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_117
    .catchall {:try_start_5 .. :try_end_14} :catchall_111

    :try_start_14
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4
    :try_end_24
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_24} :catch_10e
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_24} :catch_10c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_24} :catch_10a
    .catchall {:try_start_14 .. :try_end_24} :catchall_195

    if-nez v4, :cond_43

    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_42

    :catch_2f
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-void

    :cond_43
    :try_start_43
    const-string v5, "package"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_4a
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_64

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    sget-object v7, Lcom/oplus/fancyicon/util/PackageParser;->sPackageAttributes:Ljava/util/Vector;

    new-instance v8, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;

    invoke-direct {v8, v6}, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_63
    move-object v3, v2

    :cond_64
    iget-object v4, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6a
    :goto_6a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/fancyicon/command/IntentCommand;

    invoke-virtual {v5}, Lcom/oplus/fancyicon/command/IntentCommand;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_7d

    goto :goto_6a

    :cond_7d
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lcom/oplus/fancyicon/util/PackageParser;->sPackageAttributes:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_9b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_43 .. :try_end_9b} :catch_10e
    .catch Lorg/xml/sax/SAXException; {:try_start_43 .. :try_end_9b} :catch_10c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_9b} :catch_10a
    .catchall {:try_start_43 .. :try_end_9b} :catchall_195

    const-string v11, "android.intent.category.LAUNCHER"

    if-nez v10, :cond_c3

    :try_start_9f
    iget-object v10, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mOldAction:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c3

    iget-object v6, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewAction:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b5

    iget-object v6, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6a

    :cond_b5
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6a

    :cond_c3
    if-eqz v7, :cond_8b

    iget-object v10, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mOldComponentName:Landroid/content/ComponentName;

    if-eqz v10, :cond_8b

    invoke-virtual {v7, v10}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v10

    if-nez v10, :cond_8b

    iget-object v6, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewAction:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e3

    iget-object v6, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v11}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6a

    :cond_e3
    iget-object v6, v9, Lcom/oplus/fancyicon/util/PackageParser$PackageAttributes;->mNewComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_e8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9f .. :try_end_e8} :catch_10e
    .catch Lorg/xml/sax/SAXException; {:try_start_9f .. :try_end_e8} :catch_10c
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_e8} :catch_10a
    .catchall {:try_start_9f .. :try_end_e8} :catchall_195

    goto :goto_6a

    :cond_e9
    if-eqz v3, :cond_ee

    :try_start_eb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_ee
    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f3} :catch_f5

    goto/16 :goto_194

    :catch_f5
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_fb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_194

    :catch_10a
    move-exception v2

    goto :goto_11b

    :catch_10c
    move-exception v2

    goto :goto_143

    :catch_10e
    move-exception v2

    goto/16 :goto_16d

    :catchall_111
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto/16 :goto_196

    :catch_117
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_11b
    :try_start_11b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_11b .. :try_end_12d} :catchall_195

    if-eqz v3, :cond_132

    :try_start_12f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_132
    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_137} :catch_138

    goto :goto_194

    :catch_138
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_fb

    :catch_13f
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_143
    :try_start_143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAXException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catchall {:try_start_143 .. :try_end_157} :catchall_195

    if-eqz v3, :cond_15c

    :try_start_159
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_15c
    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_161} :catch_162

    goto :goto_194

    :catch_162
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_fb

    :catch_169
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_16d
    :try_start_16d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserConfigurationException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catchall {:try_start_16d .. :try_end_181} :catchall_195

    if-eqz v3, :cond_186

    :try_start_183
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_186
    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_18b} :catch_18c

    goto :goto_194

    :catch_18c
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_fb

    :goto_194
    return-void

    :catchall_195
    move-exception v2

    :goto_196
    if-eqz v3, :cond_19b

    :try_start_198
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_19b
    iget-object p0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a0} :catch_1a1

    goto :goto_1b4

    :catch_1a1
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b4
    throw v2
.end method

.method public startParse()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/util/PackageParser;->mIntentCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    const-string v0, "PackageParser"

    const-string v1, "startParse now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_12
    return-void
.end method
