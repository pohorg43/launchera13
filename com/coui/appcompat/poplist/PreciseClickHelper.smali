.class public Lcom/coui/appcompat/poplist/PreciseClickHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field public c:[Ljava/lang/Float;

.field public d:Landroid/view/View$OnTouchListener;

.field public e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->c:[Ljava/lang/Float;

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PreciseClickHelper$1;-><init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->d:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/poplist/PreciseClickHelper$2;-><init>(Lcom/coui/appcompat/poplist/PreciseClickHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->e:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->b:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-void
.end method
