.class Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$2;->this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    const-string v0, "TipsManager"

    const-string v1, "TipsManager: onGlobalLayout"

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager$2;->this$0:Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->showTipsImpl()V

    return-void
.end method
