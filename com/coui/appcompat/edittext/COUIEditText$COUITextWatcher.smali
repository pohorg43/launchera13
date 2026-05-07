.class Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "COUITextWatcher"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coui/appcompat/edittext/COUIEditText$1;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    sget v0, Lcom/coui/appcompat/edittext/COUIEditText;->s0:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->i(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
