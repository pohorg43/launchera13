.class Lcom/android/common/debug/TraceLog$TraceWriterCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/TraceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceWriterCallback"
.end annotation


# static fields
.field private static final MSG_FLUSH:I = 0x2

.field private static final MSG_WRITE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/common/debug/TraceLog$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/debug/TraceLog$TraceWriterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    sget-object p0, Lcom/android/common/debug/TraceLog;->sTracesDirectory:Ljava/io/File;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    :cond_6
    iget p0, p1, Landroid/os/Message;->what:I

    if-eq p0, v0, :cond_1d

    const/4 p1, 0x2

    if-eq p0, p1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    invoke-static {}, Lcom/android/common/debug/TraceLog;->access$100()Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-static {}, Lcom/android/common/debug/TraceLog;->access$200()V

    :cond_18
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/common/debug/TraceLog;->access$102(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return v0

    :cond_1d
    invoke-static {}, Lcom/android/common/debug/TraceLog;->access$100()Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/common/debug/TraceLog;->access$102(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_2b
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Lcom/android/common/debug/TraceLog;->access$100()Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0
.end method
