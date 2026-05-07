.class Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;->b:Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;->b:Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1;->a:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu$1$1;->a:Landroid/view/View;

    iget-boolean v1, v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->d:Z

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Landroid/view/View;)V

    :cond_f
    return-void
.end method
