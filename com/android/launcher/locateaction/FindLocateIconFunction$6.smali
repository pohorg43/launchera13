.class Lcom/android/launcher/locateaction/FindLocateIconFunction$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field public final synthetic val$iconView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iput-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;->val$iconView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-static {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$000(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    goto :goto_f

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$6;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-virtual {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->cancel()V

    :goto_f
    return-void
.end method
