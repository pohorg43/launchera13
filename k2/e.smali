.class public Lk2/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lk2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lk2/e;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lk2/e;->a:Lk2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
