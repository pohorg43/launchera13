.class Lcom/oplus/splitscreen/SplitScreenGuideManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


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

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$2;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotateDisplay(IIILandroid/window/WindowContainerTransaction;)V
    .registers 5

    if-eq p2, p3, :cond_9

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenGuideManager$2;->this$0:Lcom/oplus/splitscreen/SplitScreenGuideManager;

    const-string p1, "onRotateDisplay"

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->dismissGuidDialog(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
