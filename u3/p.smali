.class public final Lu3/p;
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

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/p;->a:Lv3/y;

    return-void
.end method
