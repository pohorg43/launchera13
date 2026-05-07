.class Landroidx/exifinterface/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    return-void
.end method


# virtual methods
.method public isFormatCompatible(I)Z
    .registers 5

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_31

    if-ne p1, v1, :cond_9

    goto :goto_31

    :cond_9
    if-eq v0, p1, :cond_31

    iget p0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne p0, p1, :cond_10

    goto :goto_31

    :cond_10
    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    if-ne p0, v1, :cond_19

    :cond_15
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    return v2

    :cond_19
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1f

    if-ne p0, v1, :cond_24

    :cond_1f
    const/16 v1, 0x8

    if-ne p1, v1, :cond_24

    return v2

    :cond_24
    const/16 v1, 0xc

    if-eq v0, v1, :cond_2a

    if-ne p0, v1, :cond_2f

    :cond_2a
    const/16 p0, 0xb

    if-ne p1, p0, :cond_2f

    return v2

    :cond_2f
    const/4 p0, 0x0

    return p0

    :cond_31
    :goto_31
    return v2
.end method
