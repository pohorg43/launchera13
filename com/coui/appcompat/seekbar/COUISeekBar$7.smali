.class Lcom/coui/appcompat/seekbar/COUISeekBar$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$7;->a:Lcom/coui/appcompat/seekbar/COUISeekBar;

    iget-boolean v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->j:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/os/LinearmotorVibrator;

    const/16 v2, 0x98

    iget v3, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->h:I

    iget v4, p0, Lcom/coui/appcompat/seekbar/COUISeekBar;->i:I

    const/16 v5, 0xc8

    const/16 v6, 0x7d0

    invoke-static/range {v1 .. v6}, Lcom/coui/appcompat/vibrateutil/VibrateUtils;->d(Lcom/oplus/os/LinearmotorVibrator;IIIII)V

    :cond_18
    return-void
.end method
