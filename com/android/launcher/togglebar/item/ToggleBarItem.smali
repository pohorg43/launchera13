.class public Lcom/android/launcher/togglebar/item/ToggleBarItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsSelected:Z

.field private mThumbnail:Landroid/graphics/drawable/Drawable;

.field private mThumbnailResId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field private mViewId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/togglebar/item/ToggleBarItem$1;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/item/ToggleBarItem$1;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitleResId:I

    iput v0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnailResId:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitleResId:I

    iput v0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnailResId:I

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnail:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/togglebar/item/ToggleBarItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getThumbnailResId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnailResId:I

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 4

    iget v0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitleResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getViewId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mViewId:I

    return p0
.end method

.method public getViewSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mIsSelected:Z

    return p0
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setThumbnailResId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mThumbnailResId:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleResId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitleResId:I

    return-void
.end method

.method public setViewId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mViewId:I

    return-void
.end method

.method public setViewSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mIsSelected:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
