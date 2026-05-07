.class public final Lcom/android/launcher3/anim/AlphaTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AlphaTarget$Companion;
    }
.end annotation


# static fields
.field private static final ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/AlphaTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/launcher3/anim/AlphaTarget$Companion;


# instance fields
.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/AlphaTarget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AlphaTarget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/AlphaTarget;->Companion:Lcom/android/launcher3/anim/AlphaTarget$Companion;

    new-instance v0, Lcom/android/launcher3/anim/AlphaTarget$Companion$ALPHA$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AlphaTarget$Companion$ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/AlphaTarget;->ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public varargs constructor <init>([Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/h;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/AlphaTarget;->mViews:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getALPHA$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/AlphaTarget;->ALPHA:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic access$getAlpha(Lcom/android/launcher3/anim/AlphaTarget;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AlphaTarget;->getAlpha()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAlpha(Lcom/android/launcher3/anim/AlphaTarget;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AlphaTarget;->setAlpha(F)V

    return-void
.end method

.method private final getAlpha()F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/AlphaTarget;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method private final setAlpha(F)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/anim/AlphaTarget;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimAlpha(F)V

    goto :goto_6

    :cond_1c
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    :cond_20
    return-void
.end method
