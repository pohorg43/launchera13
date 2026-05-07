.class Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemTipBean"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->a:I

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->b:I

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->a:I

    iput p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->b:I

    return-void
.end method
