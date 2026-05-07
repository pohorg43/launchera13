.class public final Lcom/android/launcher/backup/util/LayoutXMLUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BUF_SIZE:I = 0x8000

.field public static final INSTANCE:Lcom/android/launcher/backup/util/LayoutXMLUtils;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/LayoutXMLUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->INSTANCE:Lcom/android/launcher/backup/util/LayoutXMLUtils;

    const-string v0, "LayoutXMLUtils"

    const-string v1, "BR-Launcher_"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "copyFile exception occur while close in stream"

    const-string v1, "copyFile exception occur while close out stream"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_45

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1c} :catch_63
    .catchall {:try_start_6 .. :try_end_1c} :catchall_60

    :try_start_1c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_43
    .catchall {:try_start_1c .. :try_end_21} :catchall_7f

    const p1, 0x8000

    :try_start_24
    new-array p1, p1, [B

    :goto_26
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_31

    invoke-virtual {v4, p1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_26

    :cond_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3b} :catch_40
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3d

    move-object v3, v4

    goto :goto_46

    :catchall_3d
    move-exception p1

    move-object v3, v4

    goto :goto_80

    :catch_40
    move-exception p1

    move-object v3, v4

    goto :goto_65

    :catch_43
    move-exception p1

    goto :goto_65

    :cond_45
    move-object p0, v3

    :goto_46
    const/4 v2, 0x1

    if-nez v3, :cond_4a

    goto :goto_53

    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_53

    :catch_4e
    sget-object p1, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
    if-nez p0, :cond_56

    goto :goto_7e

    :cond_56
    :try_start_56
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_7e

    :catch_5a
    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :catchall_60
    move-exception p1

    move-object p0, v3

    goto :goto_80

    :catch_63
    move-exception p1

    move-object p0, v3

    :goto_65
    :try_start_65
    sget-object v4, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v5, "copyFile exception, e: "

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_7f

    if-nez v3, :cond_73

    goto :goto_7c

    :cond_73
    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7c

    :catch_77
    sget-object p1, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7c
    if-nez p0, :cond_56

    :goto_7e
    return v2

    :catchall_7f
    move-exception p1

    :goto_80
    if-nez v3, :cond_83

    goto :goto_8c

    :cond_83
    :try_start_83
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8c

    :catch_87
    sget-object v2, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    if-nez p0, :cond_8f

    goto :goto_98

    :cond_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_98

    :catch_93
    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_98
    throw p1
.end method

.method public static final deleteXmlFile(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v0, "deleteXmlFile failed, filePath is empty"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3c

    sget-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v1, "deleteXmlFile xmlFile.delete failed. filePath = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2f} :catch_30

    goto :goto_3c

    :catch_30
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v1, "deleteXmlFile exception, e: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static final getXmlContent(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_4e
    .catchall {:try_start_1 .. :try_end_6} :catchall_49

    :try_start_6
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_46
    .catchall {:try_start_6 .. :try_end_b} :catchall_41

    :try_start_b
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const v3, 0x8000

    new-array v4, v3, [B

    :goto_15
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    iput v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_23

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    :cond_23
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "baos.toByteArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "UTF_8"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_3f
    .catchall {:try_start_b .. :try_end_38} :catchall_63

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v4

    :catch_3f
    move-exception v2

    goto :goto_51

    :catchall_41
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_64

    :catch_46
    move-exception v2

    move-object p0, v0

    goto :goto_51

    :catchall_49
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_64

    :catch_4e
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_51
    :try_start_51
    sget-object v3, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v4, "getXmlContent exception, e: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_63

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_63
    move-exception v0

    :goto_64
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final isXmlAvailable(Ljava/io/FileDescriptor;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_17
    .catchall {:try_start_2 .. :try_end_7} :catchall_15

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_12
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_27

    :catchall_f
    move-exception p0

    move-object v1, v2

    goto :goto_2b

    :catch_12
    move-exception p0

    move-object v1, v2

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_2b

    :catch_17
    move-exception p0

    :goto_18
    :try_start_18
    sget-object v2, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v3, "isXmlAvailable exception, e: "

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_15

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move p0, v0

    :goto_27
    if-lez p0, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    :goto_2b
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static final writeToXml(Ljava/io/FileDescriptor;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inputString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_56

    if-nez p0, :cond_f

    goto :goto_56

    :cond_f
    const/4 v0, 0x0

    :try_start_10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "UTF_8"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_41
    .catchall {:try_start_10 .. :try_end_26} :catchall_3f

    :try_start_26
    array-length p0, p1

    invoke-virtual {v2, p1, v1, p0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_34} :catch_3c
    .catchall {:try_start_26 .. :try_end_34} :catchall_39

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_39
    move-exception p0

    move-object v0, v2

    goto :goto_52

    :catch_3c
    move-exception p0

    move-object v0, v2

    goto :goto_42

    :catchall_3f
    move-exception p0

    goto :goto_52

    :catch_41
    move-exception p0

    :goto_42
    :try_start_42
    sget-object p1, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeToXml exception, e: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_3f

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_52
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_56
    :goto_56
    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "writeToXml failed, inputString is empty or fileDescriptor is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
