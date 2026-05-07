.class public final Lcom/android/launcher3/anim/ScaleTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/ScaleTarget$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/ScaleTarget$Companion;

.field private static final SCALE_TARGET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/ScaleTarget;",
            ">;"
        }
    .end annotation
.end field


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

    new-instance v0, Lcom/android/launcher3/anim/ScaleTarget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/ScaleTarget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/ScaleTarget;->Companion:Lcom/android/launcher3/anim/ScaleTarget$Companion;

    new-instance v0, Lcom/android/launcher3/anim/ScaleTarget$Companion$SCALE_TARGET$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/ScaleTarget$Companion$SCALE_TARGET$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/ScaleTarget;->SCALE_TARGET:Landroid/util/FloatProperty;

    return-void
.end method

.method public varargs constructor <init>([Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz2/h;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/ScaleTarget;->mViews:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSCALE_TARGET$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/ScaleTarget;->SCALE_TARGET:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic access$getScale(Lcom/android/launcher3/anim/ScaleTarget;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/ScaleTarget;->getScale()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setScale(Lcom/android/launcher3/anim/ScaleTarget;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/ScaleTarget;->setScale(F)V

    return-void
.end method

.method private final getScale()F
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/ScaleTarget;->mViews:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0
.end method

.method private final setScale(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/anim/ScaleTarget;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_6

    :cond_19
    return-void
.end method
