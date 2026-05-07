.class Lcom/oplus/fancyicon/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleInfo"
.end annotation


# instance fields
.field public mValue:Ljava/lang/Double;

.field public mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Double;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    iput p2, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    iget p1, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/fancyicon/data/Variables$DoubleInfo;->mVersion:I

    return-void
.end method
