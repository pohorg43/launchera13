.class public final Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;,
        Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;,
        Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

.field private static final SCALE_ALPHA_TARGET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_FACTOR:F = 0.95f


# instance fields
.field private mAlphaPro:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;

.field private mAnimProgress:F

.field private mScalePro:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

    new-instance v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion$SCALE_ALPHA_TARGET$1;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion$SCALE_ALPHA_TARGET$1;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->SCALE_ALPHA_TARGET:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Z)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;-><init>(Lcom/android/launcher/Launcher;Z)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->mAlphaPro:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;

    new-instance v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;-><init>(Lcom/android/launcher/Launcher;Z)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->mScalePro:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;

    return-void
.end method

.method public static final synthetic access$getSCALE_ALPHA_TARGET$cp()Landroid/util/FloatProperty;
    .registers 1

    sget-object v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->SCALE_ALPHA_TARGET:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final getSCALE_ALPHA_TARGET()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;->getSCALE_ALPHA_TARGET()Landroid/util/FloatProperty;

    move-result-object v0

    return-object v0
.end method

.method public static final reset(Lcom/android/launcher/Launcher;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;->reset(Lcom/android/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public final get()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->mAnimProgress:F

    return p0
.end method

.method public final set(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->mAnimProgress:F

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->mAlphaPro:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->mScalePro:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->setScale(F)V

    return-void
.end method
