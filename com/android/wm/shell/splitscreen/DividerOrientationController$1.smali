.class Lcom/android/wm/shell/splitscreen/DividerOrientationController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/DividerOrientationController;->setDividerRotationTipsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$1;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplitVisibilityChanged(Z)V
    .registers 2

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$1;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$000(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/oplus/splitscreen/DividerRotationTips;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController$1;->this$0:Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->access$000(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)Lcom/oplus/splitscreen/DividerRotationTips;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerRotationTips;->hide()V

    :cond_13
    return-void
.end method
