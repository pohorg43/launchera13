.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5$1;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;->a:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->u:F

    return-void
.end method
