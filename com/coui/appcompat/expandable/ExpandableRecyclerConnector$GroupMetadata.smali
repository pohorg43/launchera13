.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata$1;

    invoke-direct {v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIJ)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;
    .registers 6

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    invoke-direct {v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;-><init>()V

    iput p0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iput p1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    iput p2, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    iput-wide p3, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->d:J

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz p1, :cond_a

    iget p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    iget p1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    sub-int/2addr p0, p1

    return p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
