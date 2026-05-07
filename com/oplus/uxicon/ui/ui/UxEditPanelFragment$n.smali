.class public Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "dialer_"

    invoke-static {p0, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_13
    aget-object p0, p1, v0

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1}, Lcom/oplus/uxicon/ui/util/UxFileUtils;->saveToDir(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground file is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UxEditPanelFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "UxEditPanelFragment"

    const-string p1, "onPostExecute file saved --"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;->a([Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;->a(Ljava/lang/Boolean;)V

    return-void
.end method
