.class public final Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion;

.field public static final VIEW_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private mButtonView:Landroid/view/View;

.field private mCurrentAlpha:F

.field private mToggleBarView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->Companion:Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion;

    new-instance v0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion$VIEW_ALPHA$1;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget$Companion$VIEW_ALPHA$1;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->VIEW_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const-string v0, "mButtonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mToggleBarView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mButtonView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mToggleBarView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mCurrentAlpha:F

    return-void
.end method


# virtual methods
.method public final get()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mCurrentAlpha:F

    return p0
.end method

.method public final set(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mCurrentAlpha:F

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/FolderToggleBarTarget;->mToggleBarView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
