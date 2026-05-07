.class Lcom/oplus/shield/utils/DebugUtils$DebugObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/shield/utils/DebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/shield/utils/DebugUtils;


# direct methods
.method private constructor <init>(Lcom/oplus/shield/utils/DebugUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/shield/utils/DebugUtils$DebugObserver;->this$0:Lcom/oplus/shield/utils/DebugUtils;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/shield/utils/DebugUtils;Lcom/oplus/shield/utils/DebugUtils$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/shield/utils/DebugUtils$DebugObserver;-><init>(Lcom/oplus/shield/utils/DebugUtils;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/shield/utils/DebugUtils$DebugObserver;->this$0:Lcom/oplus/shield/utils/DebugUtils;

    invoke-static {p0}, Lcom/oplus/shield/utils/DebugUtils;->access$200(Lcom/oplus/shield/utils/DebugUtils;)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/shield/utils/DebugUtils;->access$102(Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Change MODE to debug mode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/shield/utils/DebugUtils;->access$100()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->d(Ljava/lang/String;)V

    return-void
.end method
