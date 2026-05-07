.class public Le2/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Le2/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Le2/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/b;-><init>(Le2/a;)V

    sput-object v0, Le2/b$a;->a:Le2/b;

    return-void
.end method
