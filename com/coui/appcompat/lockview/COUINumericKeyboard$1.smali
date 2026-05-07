.class Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/lockview/COUINumericKeyboard;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;->a:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$1;->a:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->M:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
