.class Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1$1;->this$1:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$1$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->saveRecommendAppList(Landroid/content/Context;)V

    return-void
.end method
