.class Lcom/coui/appcompat/button/COUILoadingButton$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/COUILoadingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/button/COUILoadingButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$1;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$1;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    sget p1, Lcom/coui/appcompat/button/COUILoadingButton;->w:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
