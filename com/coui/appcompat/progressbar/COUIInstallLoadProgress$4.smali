.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;Z)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;->b:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iput-boolean p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;->a:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;->b:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-static {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->c(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Z

    :cond_9
    return-void
.end method
