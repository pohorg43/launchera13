.class Lcom/coui/appcompat/button/COUILoadingButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/button/COUILoadingButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/button/COUILoadingButton;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton$5;->a:Lcom/coui/appcompat/button/COUILoadingButton;

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->u:Landroid/animation/AnimatorSet;

    return-void
.end method
