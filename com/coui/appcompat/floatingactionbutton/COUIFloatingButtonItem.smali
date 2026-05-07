.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public final d:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public final e:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/content/res/ColorStateList;

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$1;

    invoke-direct {v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->f:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->h:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, -0x80000000

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->f:Landroid/content/res/ColorStateList;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->g:Landroid/content/res/ColorStateList;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->h:Landroid/content/res/ColorStateList;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->i:Z

    iget-object p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->b:Ljava/lang/String;

    iget p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->e:I

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->c:I

    iget p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->b:I

    iput p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->d:I

    iget-object p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->c:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->e:Landroid/graphics/drawable/Drawable;

    iget-object p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->f:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->f:Landroid/content/res/ColorStateList;

    iget-object p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->g:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->g:Landroid/content/res/ColorStateList;

    iget-object p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->h:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->h:Landroid/content/res/ColorStateList;

    iget-boolean p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->i:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->i:Z

    iget p1, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem$Builder;->a:I

    iput p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonItem;->a:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
