.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Z

    return-void
.end method
