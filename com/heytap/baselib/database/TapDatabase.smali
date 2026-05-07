.class public Lcom/heytap/baselib/database/TapDatabase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/baselib/database/TapDatabase$Callback;,
        Lcom/heytap/baselib/database/TapDatabase$b;
    }
.end annotation


# static fields
.field public static final a:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/heytap/baselib/database/TapDatabase$b;

    sget-object v0, Ly2/g;->a:Ly2/g;

    sget-object v1, Lcom/heytap/baselib/database/TapDatabase$a;->a:Lcom/heytap/baselib/database/TapDatabase$a;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/heytap/baselib/database/TapDatabase;->a:Ly2/e;

    return-void
.end method
