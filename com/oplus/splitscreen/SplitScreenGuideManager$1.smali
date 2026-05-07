.class Lcom/oplus/splitscreen/SplitScreenGuideManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenGuideManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/splitscreen/SplitScreenGuideManager$1;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->lambda$onDisplayConfigurationChanged$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onDisplayConfigurationChanged$0(Landroid/content/res/Configuration;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->access$100(Lcom/oplus/splitscreen/SplitScreenGuideManager;)Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;->handleConfigChange(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->access$000(Lcom/oplus/splitscreen/SplitScreenGuideManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->access$100(Lcom/oplus/splitscreen/SplitScreenGuideManager;)Lcom/oplus/splitscreen/SplitScreenFingerGuideDialog;

    move-result-object p1

    if-nez p1, :cond_11

    goto :goto_20

    :cond_11
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$1;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->access$000(Lcom/oplus/splitscreen/SplitScreenGuideManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/oplus/splitscreen/e;

    invoke-direct {v0, p0, p2}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/splitscreen/SplitScreenGuideManager$1;Landroid/content/res/Configuration;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_20
    :goto_20
    sget-object p0, Lcom/oplus/splitscreen/SplitScreenGuideManager;->TAG:Ljava/lang/String;

    const-string p1, "onDisplayConfigurationChanged() no init."

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
