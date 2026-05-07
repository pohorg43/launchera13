.class Lcom/oplus/splitscreen/DividerMenuPopupListWindow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/DividerMenuPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/DividerMenuPopupListWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/DividerMenuPopupListWindow$1;->this$0:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/splitscreen/DividerMenuPopupListWindow$1;->this$0:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->dismissPopupWindow()V

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenuPopupListWindow$1;->this$0:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->access$002(Lcom/oplus/splitscreen/DividerMenuPopupListWindow;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenuPopupListWindow$1;->this$0:Lcom/oplus/splitscreen/DividerMenuPopupListWindow;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/DividerMenuPopupListWindow;->access$002(Lcom/oplus/splitscreen/DividerMenuPopupListWindow;Z)Z

    return-void
.end method
