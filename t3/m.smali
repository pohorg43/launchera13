.class public final Lt3/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;

.field public static final b:Lv3/y;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/m;->a:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lt3/m;->b:Lv3/y;

    return-void
.end method
