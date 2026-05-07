.class public Lcom/oplus/statistics/OTrackConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/statistics/OTrackConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private env:I

.field private headerFlag:I

.field private packageName:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->env:I

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/statistics/OTrackConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->env:I

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/statistics/OTrackConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/statistics/OTrackConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/statistics/OTrackConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/statistics/OTrackConfig$Builder;)I
    .registers 1

    iget p0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    return p0
.end method


# virtual methods
.method public build()Lcom/oplus/statistics/OTrackConfig;
    .registers 3

    new-instance v0, Lcom/oplus/statistics/OTrackConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/statistics/OTrackConfig;-><init>(Lcom/oplus/statistics/OTrackConfig$Builder;Lcom/oplus/statistics/OTrackConfig$1;)V

    return-object v0
.end method

.method public enableGuidHeader()Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    return-object p0
.end method

.method public enableImeiHeader()Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    return-object p0
.end method

.method public enablePcbaHeader()Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->headerFlag:I

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setEnv(I)Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->env:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/oplus/statistics/OTrackConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/statistics/OTrackConfig$Builder;->versionName:Ljava/lang/String;

    return-object p0
.end method
