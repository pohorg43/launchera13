.class public final Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/WidgetSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion;
    }
.end annotation


# static fields
.field private static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion;


# instance fields
.field private fitToContents:Z

.field private hideable:Z

.field private peekHeight:I

.field private skipCollapsed:Z

.field private final state:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->Companion:Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion;

    new-instance v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->peekHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1f

    move p2, v1

    goto :goto_20

    :cond_1f
    move p2, v0

    :goto_20
    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->fitToContents:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_2a

    move p2, v1

    goto :goto_2b

    :cond_2a
    move p2, v0

    :goto_2b
    iput-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->hideable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_34

    move v0, v1

    :cond_34
    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .registers 3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->state:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/android/launcher3/widget/WidgetSheetBehavior;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "behavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->state:I

    invoke-virtual {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->getPeekHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->peekHeight:I

    invoke-static {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getFitToContents$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->fitToContents:Z

    invoke-virtual {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getMHideable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->hideable:Z

    invoke-static {p2}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$getSkipCollapsed$p(Lcom/android/launcher3/widget/WidgetSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method

.method public static final synthetic access$getCREATOR$cp()Landroid/os/Parcelable$Creator;
    .registers 1

    sget-object v0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public static synthetic getState$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final getFitToContents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->fitToContents:Z

    return p0
.end method

.method public final getHideable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->hideable:Z

    return p0
.end method

.method public final getPeekHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->peekHeight:I

    return p0
.end method

.method public final getSkipCollapsed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->skipCollapsed:Z

    return p0
.end method

.method public final getState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->state:I

    return p0
.end method

.method public final setFitToContents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->fitToContents:Z

    return-void
.end method

.method public final setHideable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->hideable:Z

    return-void
.end method

.method public final setPeekHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->peekHeight:I

    return-void
.end method

.method public final setSkipCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->skipCollapsed:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->peekHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->fitToContents:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->hideable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SavedState;->skipCollapsed:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
