.class public final Lq1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRusConfigChanged()V
    .registers 1

    sget-object p0, Lq1/b;->a:Lq1/b;

    invoke-virtual {p0}, Lq1/b;->a()V

    return-void
.end method
