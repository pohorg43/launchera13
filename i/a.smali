.class public Li/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lj/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj/j<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/res/AssetManager;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj/j;

    invoke-direct {v0}, Lj/j;-><init>()V

    iput-object v0, p0, Li/a;->a:Lj/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li/a;->c:Ljava/util/Map;

    const-string v0, ".ttf"

    iput-object v0, p0, Li/a;->e:Ljava/lang/String;

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_29

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lq/f;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Li/a;->d:Landroid/content/res/AssetManager;

    return-void

    :cond_29
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Li/a;->d:Landroid/content/res/AssetManager;

    return-void
.end method
