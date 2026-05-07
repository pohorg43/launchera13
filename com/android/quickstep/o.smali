.class public final synthetic Lcom/android/quickstep/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/o;

    invoke-direct {v0}, Lcom/android/quickstep/o;-><init>()V

    sput-object v0, Lcom/android/quickstep/o;->a:Lcom/android/quickstep/o;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->e()V

    return-void
.end method
