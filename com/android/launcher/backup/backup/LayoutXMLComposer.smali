.class public Lcom/android/launcher/backup/backup/LayoutXMLComposer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LAYOUT_DB_VERSION:Ljava/lang/String; = "dbVersion"

.field public static final LAYOUT_IS_EXP:Ljava/lang/String; = "isExpVersion"

.field public static final LAYOUT_MIN_DOWNGRADE_VERSION:Ljava/lang/String; = "minDowngradeVersion"

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final SUB_TAG_INDENT:Ljava/lang/String; = "    "

.field private static final SUPER_TAG_INDENT:Ljava/lang/String; = "  "

.field private static final TAG:Ljava/lang/String; = "BR-Launcher_LayoutXMLComposer"

.field public static final XML_MIN_DOWNGRADE_VERSION:I = 0x1c


# instance fields
.field private final mSerializer:Lorg/xmlpull/v1/XmlSerializer;

.field private final mStringWriter:Ljava/io/StringWriter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    return-void
.end method

.method private addNewlineAndIndent(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, ""

    if-nez p2, :cond_9

    move-object p2, v0

    :cond_9
    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOneItemRecord(ILcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "folder"

    const-string/jumbo v3, "shortcut"

    const-string v4, "application"

    const/4 v5, 0x0

    if-nez v1, :cond_16

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string v1, "generateOneItemRecord failed: itemInfo = null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_16
    const-string/jumbo v6, "profileId"

    const-string/jumbo v7, "rank"

    const-string/jumbo v8, "spanY"

    const-string/jumbo v9, "spanX"

    const-string/jumbo v10, "restored"

    const-string/jumbo v11, "user_id"

    const-string/jumbo v12, "packageName"

    const-string v13, "intent"

    const-string/jumbo v14, "title"

    const-string v5, "cellY"

    const-string v15, "cellX"

    move-object/from16 v16, v4

    const-string/jumbo v4, "screen"

    move-object/from16 v17, v3

    const-string/jumbo v3, "screenId"

    move-object/from16 v18, v2

    const-string v2, "container"

    move-object/from16 v19, v8

    const-string v8, "_id"

    move-object/from16 v20, v9

    const-string v9, "    "

    const-string v1, ""

    packed-switch p1, :pswitch_data_590

    goto/16 :goto_58e

    :pswitch_51  #0x6
    :try_start_51
    invoke-direct {v0, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v6

    const-string/jumbo v6, "url_shortcut"

    invoke-interface {v9, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v13, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v14, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v12, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v6

    invoke-static {v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconType"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconType()I

    move-result v2

    if-nez v2, :cond_116

    sget-object v2, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD backup iconPack-Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconPackage"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconResource"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIconResource()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_116
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v21

    invoke-direct {v0, v6, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "url_shortcut"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: shortcut, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_14e} :catch_150

    goto/16 :goto_3d0

    :catch_150
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneItemRecord, add one url shortcut error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_58e

    :pswitch_16c  #0x5
    move-object/from16 v6, p2

    :try_start_16e
    invoke-direct {v0, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "card"

    invoke-interface {v7, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v8, v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v14, v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v7

    invoke-static {v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v2, v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v20

    invoke-direct {v0, v7, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v19

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "card_type"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardType()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "service_id"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "card_category"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCardCategory()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appWidgetProvider"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "card"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: card, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_23d} :catch_23f

    goto/16 :goto_3d0

    :catch_23f
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneItemRecord, add one url card error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_58e

    :pswitch_25b  #0x4
    move-object/from16 v6, p2

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    :try_start_261
    invoke-direct {v0, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "widget"

    invoke-interface {v9, v1, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v13, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v12, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "className"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v8

    invoke-static {v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appWidgetId"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetId()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appWidgetProvider"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "widget"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: widget, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_31a} :catch_31c

    goto/16 :goto_3d0

    :catch_31c
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneItemRecord, add one widget error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_58e

    :pswitch_338  #0x3
    move-object/from16 v6, p2

    move-object/from16 v11, v19

    move-object/from16 v7, v20

    :try_start_33e
    invoke-direct {v0, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v10, v18

    invoke-interface {v9, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v14, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v8

    invoke-static {v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getSpanY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "recommendId"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRecommendId()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: folder, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_33e .. :try_end_3d0} :catch_3d3

    :goto_3d0
    const/4 v5, 0x1

    goto/16 :goto_58f

    :catch_3d3
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneItemRecord, add one folder error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_58e

    :pswitch_3ef  #0x2
    :try_start_3ef
    invoke-direct {v0, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    invoke-interface {v9, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v13, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v14, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v12, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v8

    invoke-static {v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: deep shortcut, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49d
    .catch Ljava/lang/Exception; {:try_start_3ef .. :try_end_49d} :catch_49f

    goto/16 :goto_3d0

    :catch_49f
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneItemRecord, add one deep shortcut error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_58e

    :pswitch_4bb  #0x1
    :try_start_4bb
    invoke-direct {v0, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v6

    move-object/from16 v6, v16

    invoke-interface {v9, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v14, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v12, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "className"

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getContainer()I

    move-result v8

    invoke-static {v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getOldScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getScreenId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellX()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v15, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getCellY()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getRank()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getStatus()I

    move-result v2

    invoke-static {v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v10, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getProfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-direct {v0, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOneItemInfo -- itemType: application, itemInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_572
    .catch Ljava/lang/Exception; {:try_start_4bb .. :try_end_572} :catch_574

    goto/16 :goto_3d0

    :catch_574
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOneItemRecord, add one application error, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_58e
    const/4 v5, 0x0

    :goto_58f
    return v5

    :pswitch_data_590
    .packed-switch 0x1
        :pswitch_4bb  #00000001
        :pswitch_3ef  #00000002
        :pswitch_338  #00000003
        :pswitch_25b  #00000004
        :pswitch_16c  #00000005
        :pswitch_51  #00000006
    .end packed-switch
.end method

.method public addOneScreenRecord(Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;)Z
    .registers 8

    const-string/jumbo v0, "screen"

    const-string v1, ""

    const/4 v2, 0x0

    if-nez p1, :cond_10

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generateOneScreenRecord failed: screenInfo = null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_10
    const/4 v3, 0x1

    :try_start_11
    const-string v4, "    "

    invoke-direct {p0, v4}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "_id"

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldId:I

    invoke-static {v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "screenId"

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenId:I

    invoke-static {v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "screenNum"

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mOldScreenNum:I

    invoke-static {v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "new_id"

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewId:I

    invoke-static {v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "screenRank"

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ScreenInfo;->mNewScreenRank:I

    invoke-static {v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateOneScreenInfo -- screenInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_71} :catch_73

    move v2, v3

    goto :goto_7b

    :catch_73
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v0, "addOneScreenRecord error, e: "

    invoke-static {v0, p0, p1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_7b
    return v2
.end method

.method public endDeviceLayoutParameterTag()Z
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    goto :goto_10

    :catch_7
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v1, "endDeviceLayoutParameterTag error, e = "

    invoke-static {v1, p0, v0}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public endHeaderLayoutInfoTag()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "LAYOUT"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    const/4 p0, 0x1

    goto :goto_20

    :catch_17
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v1, "endHeaderLayoutInfoTag error, e = "

    invoke-static {v1, p0, v0}, Ls/b;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public endOneTypeRecordTag(I)Z
    .registers 4

    :try_start_0
    const-string v0, "  "

    invoke-direct {p0, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_44

    const-string v0, ""

    packed-switch p1, :pswitch_data_50

    goto :goto_42

    :pswitch_b  #0x6
    :try_start_b
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "URL_SHORTCUTS"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_13  #0x5
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "CARD"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_1b  #0x4
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "WIDGETS"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_23  #0x3
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "FOLDERS"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_2b  #0x2
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "SHORTCUTS"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_33  #0x1
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "APPLICATIONS"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_3b  #0x0
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "SCREENS"

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_44

    :goto_42
    const/4 p0, 0x1

    goto :goto_4e

    :catch_44
    move-exception p0

    const/4 p1, 0x0

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string v1, "endOneTypeRecordTag error, e: "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move p0, p1

    :goto_4e
    return p0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_33  #00000001
        :pswitch_2b  #00000002
        :pswitch_23  #00000003
        :pswitch_1b  #00000004
        :pswitch_13  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method

.method public getXmlInputString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public startDeviceLayoutParameterTag(Landroid/content/Context;Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;)Z
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "LOCK_APPS_LIST"

    const-string v4, "INSTALLED_DEFAULT_APPS"

    const-string v5, "RECENT_TASK_DISPLAY_PHONE_MANAGER_PARAM"

    const-string v6, "RECENT_TASK_DISPLAY_MEMORY_INFOR_PARAM"

    const-string v7, "SUPER_POWER_SAVE_LAUNCHER_APP_COUNT"

    const-string v8, "SUPER_POWER_SAVE_LAUNCHER_APP_LIST"

    const-string v9, "launcher_simple_font_text_size"

    const-string/jumbo v10, "super_power_save_launcher_app_count"

    const-string v11, "launcher_font_text_size"

    const-string v12, "launcher_simple_mode_bubbletext_font_size_key"

    const-string v13, "2"

    const-string v14, "launcher_bubbletext_font_size"

    const-string v15, "LAUNCHER_SLIDE_DOWN_PARAMETERS"

    move-object/from16 v16, v3

    const-string v3, "APP_STARTUP_ANIM_PARAMETERS"

    move-object/from16 v17, v4

    const-string/jumbo v4, "setting_app_startup_anim_speed"

    move-object/from16 v18, v5

    const-string v5, "LAYOUT_PARAMETERS"

    move-object/from16 v19, v6

    const-string v6, ""

    const/16 v20, 0x0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string v1, "generateDeviceLayoutParameter failed: layoutParameter = null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v20

    :cond_3e
    move-object/from16 v20, v7

    :try_start_40
    iget-object v7, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v10

    iget-object v10, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-interface {v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v7, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "UTF-8"

    move-object/from16 v22, v8

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v7, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v8, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x2

    new-array v10, v7, [I

    new-array v7, v7, [I

    move-object/from16 v23, v9

    iget v9, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    const/16 v24, 0x0

    aput v9, v7, v24

    iget v9, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/16 v24, 0x1

    aput v9, v7, v24

    invoke-static {v7, v10}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->generateCellCountCompatOld([I[I)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [I

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [I

    const-string v10, "cellCountX"

    const/16 v24, 0x0

    aget v24, v9, v24

    move-object/from16 v25, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v10, v12}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cellCountY"

    const/4 v12, 0x1

    aget v9, v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v10, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    aget v10, v7, v9

    if-lez v10, :cond_aa

    const-string v10, "cellCountX_OS8"

    aget v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v10, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    const/4 v9, 0x1

    aget v10, v7, v9

    if-lez v10, :cond_ba

    const-string v10, "cellCountY_OS8"

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v10, v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    const-string v7, "isCompact"

    iget-boolean v9, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsCompact:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "icon_fallen_switch"

    iget-boolean v9, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsIconFallenOn:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "dock_expand_switch"

    iget-boolean v9, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mIsDockExpandOn:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v9}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "current_launcher_mode"

    iget-object v0, v0, Lcom/android/launcher/backup/mode/BackupRestoreContract$DeviceLayoutParameter;->mCurrentMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "show_browserNews_switch"

    const-string v7, "context"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "disable_browser_news"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_101

    const/4 v7, 0x1

    goto :goto_102

    :cond_101
    const/4 v7, 0x0

    :goto_102
    if-nez v7, :cond_10b

    const-string v9, "SupportBrowserNewsHelper"

    const-string v10, "getBrowserNewsSwitch, switch not open"

    invoke-static {v9, v10}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher_layout_locked"

    sget-object v7, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {v7, v2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_14a

    sget-object v5, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: animSpeed = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_162

    iget-object v5, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v4, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_162
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_182

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDeviceLayoutParameter: slideType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v6, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v3

    if-eqz v3, :cond_195

    const-string v3, "launcher_slide_down_type_simple"

    goto :goto_197

    :cond_195
    const-string v3, "launcher_slide_down_type"

    :goto_197
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v2, v14, v13}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_1c3

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDeviceLayoutParameter: fontSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_1c7} :catch_622

    const-string/jumbo v4, "null"

    if-nez v3, :cond_1e4

    :try_start_1cc
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e4

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v14, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1e4
    move-object/from16 v0, v25

    invoke-static {v2, v0, v13}, Lcom/android/common/util/LauncherSharedPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_206

    sget-object v5, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeviceLayoutParameter: fontSimpleTextSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_206
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_226

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_226

    iget-object v5, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v7, v23

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {v1, v0, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_226
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppInfoListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2a1

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: superPowerSaveAppList = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_246} :catch_622

    if-eqz v3, :cond_25c

    :try_start_248
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25c

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25c

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a1

    :cond_25c
    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/SuperPowerSaveModelWriter;->isFirstEnterSuperPowerMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2a1

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->loadAppActivityInfo(Lcom/android/launcher3/LauncherAppState;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->updateDefaultApps(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperPowerSaveAppInfoListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDeviceLayoutParameter: after update superPowerSaveAppList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_285} :catch_286

    goto :goto_2a1

    :catch_286
    move-exception v0

    :try_start_287
    sget-object v4, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: superPowerSaveAppList e = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a1
    :goto_2a1
    if-eqz v3, :cond_2bc

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v22

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "super_power_save_launcher_app_list"

    invoke-direct {v1, v0, v3}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2bc
    const/4 v0, 0x3

    move-object/from16 v3, v21

    invoke-static {v2, v3, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_2df

    sget-object v4, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: superPowerSaveAppCount = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2df
    iget-object v4, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v5, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v7, v20

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getMemoDisplaySwitch()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_31d

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: recentTaskDisplayRamType = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31d
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v19

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "display_memory_information_recent_task"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->getPhoneManagerSwitch()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_35d

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: recentTaskDisplayPhoneManagerType = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35d
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v18

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "display_phone_manager_entrance"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getOldPhoneInstallAppsListString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_39b

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: installedDefaultApps = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39b
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v17

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "back_up_installed_default_apps"

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockedAppsListString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_3d5

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: lockAppsList = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d5
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v4, v16

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "back_up_lock_apps"

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportAppUpdateDotSwitch:Z

    if-eqz v0, :cond_414

    const-string/jumbo v0, "update_dot_switch_state"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_APP_UPDATE_DOT_PARAMETERS"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "update_dot_switch_state"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_APP_UPDATE_DOT_PARAMETERS"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_414
    const-string v0, "is_double_click_lock"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_DOUBLE_CLICK_LOCK_PARAMETERS"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "is_double_click_lock"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_DOUBLE_CLICK_LOCK_PARAMETERS"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_466

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_466

    const-string v0, "key_is_show_search_box"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_SHOW_LAUNCHER_SEARCH_BOX"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "key_is_show_search_box"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_SHOW_LAUNCHER_SEARCH_BOX"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_466
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportShowInputInDrawer:Z

    if-eqz v0, :cond_48f

    const-string/jumbo v0, "show_inputmethod_in_drawer_switch"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_SHOW_INPUT_IN_DRAWER_PAGE"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "show_inputmethod_in_drawer_switch"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_SHOW_INPUT_IN_DRAWER_PAGE"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_48f
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_4f7

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_4b5

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: customize personalized search switch status = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b5
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_PERSONALIZE_SEARCH_SETTING_SWITCH"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "oplus_customize_personalized_search_switch_status"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_PERSONALIZE_SEARCH_SETTING_SWITCH"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "key_enable_branch_search_notification"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "BRANCH_SEARCH_NOTIFICATION_SWITCH"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "key_enable_branch_search_notification"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "BRANCH_SEARCH_NOTIFICATION_SWITCH"

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4f7
    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0
    :try_end_4ff
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_4ff} :catch_622

    const-string v3, "PULLUP_GOOGLE_SEARCH_SWITCH"

    if-eqz v0, :cond_53e

    :try_start_503
    const-string v0, "is_pull_up_gsearch"

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_526

    sget-object v4, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateDeviceLayoutParameter: pull up google search = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_526
    iget-object v4, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "is_pull_up_gsearch"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_53e
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_56b

    invoke-static {}, Lcom/android/launcher3/allapps/branch/games/RecommendGamesManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_56b

    const-string v0, "key_sp_show_recommend_game"

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "TAG_RECOMMEND_GAMES_IN_DRAWER"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "key_sp_show_recommend_game"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_RECOMMEND_GAMES_IN_DRAWER"

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_56b
    invoke-static {}, Lcom/android/launcher3/search/SearchEntry;->isSearchEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_595

    const-string v0, "is_search_entry_enable"

    invoke-static {v2, v0}, Lcom/android/common/util/LauncherSharedPrefs;->hasValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_595

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "is_search_entry_enable"

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/search/SearchEntry;->isSwitchEnable(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_595
    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;

    move-result-object v0

    const-string/jumbo v2, "recommend_switch"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getBooleanPref(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_5c2

    sget-object v3, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDeviceLayoutParameter: recommend switch = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c2
    iget-object v3, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "TAG_RECOMMEND_FOLDER_SWITCH"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "recommend_switch"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_RECOMMEND_FOLDER_SWITCH"

    invoke-interface {v2, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    if-eqz v2, :cond_620

    iget-object v2, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "folder_content_recommend_switch"

    const/16 v3, -0x3e7

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/aer/OplusSharedPreferenceHelper;->getIntPref(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_609

    sget-object v2, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateDeviceLayoutParameter: folder recommend content switch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_609
    iget-object v2, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "TAG_RECOMMEND_FOLDER_CONTENT_SWITCH"

    invoke-interface {v2, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "folder_content_recommend_switch"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "TAG_RECOMMEND_FOLDER_CONTENT_SWITCH"

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_620
    .catch Ljava/lang/Exception; {:try_start_503 .. :try_end_620} :catch_622

    :cond_620
    const/4 v0, 0x1

    return v0

    :catch_622
    move-exception v0

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startDeviceLayoutParameterTag error, e: "

    invoke-static {v2, v0, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startDrawerModeSettingTag(Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;)Z
    .registers 7

    const-string v0, "DRAWER_MODE_SETTING"

    const-string v1, ""

    const/4 v2, 0x0

    if-nez p1, :cond_f

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generateDrawerModeSetting failed: drawerModeSetting = null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    :try_start_f
    iget-object v3, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "show_indicate_app"

    iget-boolean v4, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-static {v4}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "add_app_to_workspace"

    iget-boolean v4, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-static {v4}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5f

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateDrawerModeSetting -- isShowIndicateApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mShowIndicateApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAddToWorkSpace = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$DrawerModeSetting;->mAddAppToWorkSpace:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5f} :catch_61

    :cond_5f
    const/4 p0, 0x1

    return p0

    :catch_61
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startDrawerModeSettingTag error, e: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public startHeaderLayoutInfoTag()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mStringWriter:Ljava/io/StringWriter;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "UTF-8"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "LAYOUT"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "dbVersion"

    const/16 v1, 0x38

    invoke-static {v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "minDowngradeVersion"

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isExpVersion"

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-static {v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_60

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateHeaderLayoutInfo -- dbVersion = 56, minDowngradeVersion = 28, isExpVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_62

    :cond_60
    const/4 p0, 0x1

    goto :goto_6c

    :catch_62
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startHeaderLayoutInfoTag error, e: "

    invoke-static {v1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_6c
    return p0
.end method

.method public startModeLayoutParameterTag(Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;Lcom/android/launcher/mode/LauncherMode;)Z
    .registers 10

    const-string v0, "MODE_PARAMETERS"

    const-string v1, ""

    const/4 v2, 0x0

    if-nez p1, :cond_f

    sget-object p0, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    const-string p1, "generateModeLayoutParameter failed: layoutParameter = null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v3, v3, [I

    iget v5, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellXCount:I

    aput v5, v3, v2

    iget p1, p1, Lcom/android/launcher/backup/mode/BackupRestoreContract$ModeLayoutParameter;->mCellYCount:I

    const/4 v5, 0x1

    aput p1, v3, v5

    invoke-static {v3, v4}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->generateCellCountCompatOld([I[I)Landroid/util/Pair;

    move-result-object p1

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    :try_start_29
    iget-object v4, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "cellCountX"

    aget v6, v3, v2

    invoke-static {v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cellCountY"

    aget v6, v3, v5

    invoke-static {v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    aget v4, p1, v2

    if-lez v4, :cond_5a

    const-string v4, "cellCountX_OS8"

    aget v6, p1, v2

    invoke-static {v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    aget v4, p1, v5

    if-lez v4, :cond_69

    const-string v4, "cellCountY_OS8"

    aget v6, p1, v5

    invoke-static {v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget p0, v3, v2

    aget v0, v3, v5

    aget v1, p1, v2

    aget p1, p1, v5

    invoke-static {p0, v0, v1, p1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->getCellCountForNew(IIII)[I

    move-result-object p0

    sget-object p1, Lcom/android/launcher/backup/backup/LayoutXMLGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateModeLayoutParameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "-- targetCellCount = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_9c} :catch_9d

    return v5

    :catch_9d
    move-exception p0

    sget-object p1, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startModeLayoutParameterTag error, e: "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public startOneTypeRecordTag(I)Z
    .registers 5

    :try_start_0
    const-string v0, "  "

    invoke-direct {p0, v0}, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->addNewlineAndIndent(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_44

    const-string v0, ""

    packed-switch p1, :pswitch_data_66

    goto :goto_42

    :pswitch_b  #0x6
    :try_start_b
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "URL_SHORTCUTS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_13  #0x5
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "CARD"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_1b  #0x4
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "WIDGETS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_23  #0x3
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "FOLDERS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_2b  #0x2
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "SHORTCUTS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_33  #0x1
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "APPLICATIONS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_42

    :pswitch_3b  #0x0
    iget-object p0, p0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "SCREENS"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_44

    :goto_42
    const/4 p0, 0x1

    goto :goto_65

    :catch_44
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/backup/LayoutXMLComposer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startOneTypeRecordTag, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error, e: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_65
    return p0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_33  #00000001
        :pswitch_2b  #00000002
        :pswitch_23  #00000003
        :pswitch_1b  #00000004
        :pswitch_13  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method
