.class public final synthetic Lcom/android/launcher3/anim/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/anim/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/e;

    invoke-direct {v0}, Lcom/android/launcher3/anim/e;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/e;->a:Lcom/android/launcher3/anim/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgress(FF)F
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->a(FF)F

    move-result p0

    return p0
.end method
