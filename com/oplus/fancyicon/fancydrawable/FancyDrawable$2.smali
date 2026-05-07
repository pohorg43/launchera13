.class Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->checkControllerCleaned()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    iget-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    iget-object v0, p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mHelperCallback:Lcom/oplus/fancyicon/IHelperCallback;

    iget-object p1, p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mController:Lcom/oplus/fancyicon/BaseRendererController;

    invoke-virtual {p1}, Lcom/oplus/fancyicon/BaseRendererController;->getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    iget-object v1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->mName:Ljava/lang/String;

    invoke-interface {v0, p1, p0, v1}, Lcom/oplus/fancyicon/IHelperCallback;->resetDrawable(Landroid/content/Context;Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "FancyDrawable"

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->a(Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;Z)V

    iget-object p0, p0, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->this$0:Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;->postInvalidate()V

    const-string p0, "checkControllerCleaned, resetDrawable succeed!!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_19
    const-string p0, "checkControllerCleaned, resetDrawable failed!!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
