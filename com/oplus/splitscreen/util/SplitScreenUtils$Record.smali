.class Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/util/SplitScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public accessTime:J

.field public count:J

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    iput-wide p4, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->count:J

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$Record;->accessTime:J

    return-void
.end method
