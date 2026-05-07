.class public Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    move p2, v1

    goto :goto_1a

    :cond_19
    move p2, v0

    :goto_1a
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_24

    move p2, v1

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_2e

    move v0, v1

    :cond_2e
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)V
    .registers 3
    .param p2  # Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/coui/appcompat/panel/COUIBottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    iget p1, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->state:I

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->a:I

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1500(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->b:I

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1100(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->c:Z

    iget-boolean p1, p2, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->hideable:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->d:Z

    invoke-static {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->access$1600(Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->e:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$SavedState;->e:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
