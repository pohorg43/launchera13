.class public abstract Lt0/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/i$c;,
        Lt0/i$a;,
        Lt0/i$b;
    }
.end annotation


# static fields
.field public static final a:Lt0/i;

.field public static final b:Lt0/i;

.field public static final c:Lt0/i;

.field public static final d:Lj0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/d<",
            "Lt0/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lt0/i$b;

    invoke-direct {v0}, Lt0/i$b;-><init>()V

    sput-object v0, Lt0/i;->a:Lt0/i;

    new-instance v0, Lt0/i$a;

    invoke-direct {v0}, Lt0/i$a;-><init>()V

    new-instance v1, Lt0/i$c;

    invoke-direct {v1}, Lt0/i$c;-><init>()V

    sput-object v1, Lt0/i;->b:Lt0/i;

    sput-object v0, Lt0/i;->c:Lt0/i;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    invoke-static {v1, v0}, Lj0/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lj0/d;

    move-result-object v0

    sput-object v0, Lt0/i;->d:Lj0/d;

    const/4 v0, 0x1

    sput-boolean v0, Lt0/i;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IIII)I
.end method

.method public abstract b(IIII)F
.end method
