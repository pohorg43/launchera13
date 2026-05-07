.class Lcom/oplus/compat/content/ClipboardManagerNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/content/ClipboardManagerNative;->addPrimaryClipChangedListener(Lcom/oplus/compat/content/ClipboardManagerNative$ClipChangedListenerNative;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/oplus/compat/content/ClipboardManagerNative$ClipChangedListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/content/ClipboardManagerNative$ClipChangedListenerNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/content/ClipboardManagerNative$1;->val$listener:Lcom/oplus/compat/content/ClipboardManagerNative$ClipChangedListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "action"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/oplus/compat/content/ClipboardManagerNative$1;->val$listener:Lcom/oplus/compat/content/ClipboardManagerNative$ClipChangedListenerNative;

    invoke-interface {p0}, Lcom/oplus/compat/content/ClipboardManagerNative$ClipChangedListenerNative;->onPrimaryClipChanged()V

    :cond_1d
    return-void
.end method
