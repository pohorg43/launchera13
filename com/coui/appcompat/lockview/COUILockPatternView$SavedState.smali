.class Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUILockPatternView;
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
            "Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/coui/appcompat/lockview/COUILockPatternView$1;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->b:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/coui/appcompat/lockview/COUILockPatternView$1;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->a:Ljava/lang/String;

    iput p3, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->b:I

    iput-boolean p4, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->c:Z

    iput-boolean p5, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->d:Z

    iput-boolean p6, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->e:Z

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->b:I

    return p0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->a:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->c:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->d:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/coui/appcompat/lockview/COUILockPatternView$SavedState;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
