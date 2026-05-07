.class public final Lcom/oplus/glcomponent/utils/FileUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/glcomponent/utils/FileUtil;

.field private static final TAG:Ljava/lang/String; = "FileUtil"

.field private static mAssets:Landroid/content/res/AssetManager;

.field private static mResources:Landroid/content/res/Resources;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/utils/FileUtil;

    invoke-direct {v0}, Lcom/oplus/glcomponent/utils/FileUtil;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/utils/FileUtil;->INSTANCE:Lcom/oplus/glcomponent/utils/FileUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic internalBitmap$default(Lcom/oplus/glcomponent/utils/FileUtil;Ljava/lang/String;ZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/glcomponent/utils/FileUtil;->internalBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final internalFromAssets(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/utils/FileUtil;->mAssets:Landroid/content/res/AssetManager;

    if-eqz p0, :cond_1a

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    :goto_c
    return-object p0

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error reading internal file: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileUtil have not init."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final internalFromResources(I)Ljava/io/InputStream;
    .registers 3

    sget-object p0, Lcom/oplus/glcomponent/utils/FileUtil;->mResources:Landroid/content/res/Resources;

    if-eqz p0, :cond_1a

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    :goto_c
    return-object p0

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error reading internal file: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FileUtil have not init."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final init(Landroid/content/res/AssetManager;Landroid/content/res/Resources;)V
    .registers 3

    sput-object p1, Lcom/oplus/glcomponent/utils/FileUtil;->mAssets:Landroid/content/res/AssetManager;

    sput-object p2, Lcom/oplus/glcomponent/utils/FileUtil;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public final internalBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/utils/FileUtil;->internalFromAssets(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_26

    :try_start_a
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1f

    :try_start_18
    invoke-static {p0, v0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_35

    :catch_1c
    move-exception p0

    move-object v0, p1

    goto :goto_27

    :catchall_1f
    move-exception p1

    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p2

    :try_start_22
    invoke-static {p0, p1}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    :catch_26
    move-exception p0

    :goto_27
    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p2, "loadBitmapFromAssets: "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "FileUtil"

    invoke-virtual {p1, p2, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_35
    return-object p1
.end method

.method public final readInputStreamFromAssets(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    const-string v0, "FileUtil"

    const-string v1, "filename"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/utils/FileUtil;->internalFromAssets(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_c} :catch_d
    .catchall {:try_start_8 .. :try_end_c} :catchall_34

    return-object p0

    :catch_d
    move-exception p0

    :try_start_e
    sget-object v2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",error:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_2d
    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "internal: "

    invoke-virtual {p0, v0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_34

    :catchall_34
    return-object v1
.end method

.method public final readTextFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "FileUtil"

    const-string v1, "filename"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_c
    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/utils/FileUtil;->internalFromAssets(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_79

    :cond_13
    sget-object v2, Lp3/a;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 p0, 0x2000

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_23

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_29

    :cond_23
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_28} :catch_72
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_28} :catch_52

    move-object v3, v2

    :goto_29
    const/4 p0, 0x0

    :try_start_2a
    invoke-static {v3}, Lh3/g;->a(Ljava/io/BufferedReader;)Lo3/e;

    move-result-object v2

    invoke-interface {v2}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_4b

    goto :goto_32

    :cond_47
    :try_start_47
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_72
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_4a} :catch_52

    goto :goto_79

    :catchall_4b
    move-exception p0

    :try_start_4c
    throw p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v2

    :try_start_4e
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_72
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    sget-object v2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",error:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :catch_72
    sget-object p0, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string p1, "internal: "

    invoke-virtual {p0, v0, p1}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "body.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final readTextFromResources(I)Ljava/lang/String;
    .registers 7

    const-string v0, "FileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    invoke-direct {p0, p1}, Lcom/oplus/glcomponent/utils/FileUtil;->internalFromResources(I)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_79

    :cond_e
    sget-object v2, Lp3/a;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 p0, 0x2000

    instance-of v2, v3, Ljava/io/BufferedReader;

    if-eqz v2, :cond_1e

    check-cast v3, Ljava/io/BufferedReader;

    goto :goto_24

    :cond_1e
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_23} :catch_6d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_23} :catch_4d

    move-object v3, v2

    :goto_24
    const/4 p0, 0x0

    :try_start_25
    invoke-static {v3}, Lh3/g;->a(Ljava/io/BufferedReader;)Lo3/e;

    move-result-object v2

    invoke-interface {v2}, Lo3/e;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_46

    goto :goto_2d

    :cond_42
    :try_start_42
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_6d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_45} :catch_4d

    goto :goto_79

    :catchall_46
    move-exception p0

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v2

    :try_start_49
    invoke-static {v3, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_6d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    sget-object v2, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,error:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :catch_6d
    move-exception p0

    sget-object p1, Lcom/oplus/glcomponent/utils/Debugger;->INSTANCE:Lcom/oplus/glcomponent/utils/Debugger;

    const-string v2, "internal: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/oplus/glcomponent/utils/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "body.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
