.class public final Lq3/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/m;->a:Lv3/y;

    return-void
.end method
