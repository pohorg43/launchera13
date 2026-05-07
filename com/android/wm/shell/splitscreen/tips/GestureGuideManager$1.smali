.class Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->showGestureGuideIfNeed(Lcom/oplus/app/OplusAppEnterInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

.field public final synthetic val$animateSrcId:I

.field public final synthetic val$appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

.field public final synthetic val$showGuideTypeCounts:Ljava/lang/String;

.field public final synthetic val$showGuideTypeTime:Ljava/lang/String;

.field public final synthetic val$tipTextSrcId:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;IILcom/oplus/app/OplusAppEnterInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$animateSrcId:I

    iput p3, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$tipTextSrcId:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$showGuideTypeTime:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$showGuideTypeCounts:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->access$000(Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;)Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$animateSrcId:I

    iget v2, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$tipTextSrcId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->initView(II)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->access$000(Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;)Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$appEnterInfo:Lcom/oplus/app/OplusAppEnterInfo;

    iget-object v1, v1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->setShowForSpecialPkg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->access$000(Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;)Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/tips/view/GestureGuideView;->show()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$showGuideTypeTime:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->recordPlayedTime(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->this$0:Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager$1;->val$showGuideTypeCounts:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/tips/GestureGuideManager;->recordCounts(Ljava/lang/String;)V

    :cond_38
    return-void
.end method
