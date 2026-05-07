.class Lcom/android/launcher/locateaction/FindLocateIconFunction$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/locateaction/FindLocateIconFunction$2;


# direct methods
.method public constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2$1;->this$1:Lcom/android/launcher/locateaction/FindLocateIconFunction$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2$1;->this$1:Lcom/android/launcher/locateaction/FindLocateIconFunction$2;

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$folderView:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$100(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    return-void
.end method
