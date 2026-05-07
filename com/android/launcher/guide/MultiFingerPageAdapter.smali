.class public Lcom/android/launcher/guide/MultiFingerPageAdapter;
.super Lcom/oplus/widget/OplusPagerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;,
        Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;
    }
.end annotation


# static fields
.field private static final GUIDE_PAGE_COUNT:I = 0x2

.field public static final GUIDE_PAGE_INDEX_EDIT_MODE:I = 0x1

.field public static final GUIDE_PAGE_INDEX_MOVE_ICON:I = 0x0

.field private static final INVALIDATE_TIME:I = 0x32

.field private static final MSG_UPDATE_VIDEO_PLAY_OVER_ONCE_FLAG:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MultiFingerPageAdapter"

.field private static final _FLOAT_1:F = 1.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsVideoPlayOverOnce:[Z

.field private mOnButtonClickListener:Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;

.field private final mProgressHandler:Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

.field private final mVideoView:[Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/widget/OplusPagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;-><init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;)V

    iput-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mProgressHandler:Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mIsVideoPlayOverOnce:[Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->lambda$instantiateItem$2(Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/MultiFingerPageAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->updatePlayOverOnceFlag()V

    return-void
.end method

.method public static synthetic b(Landroid/widget/VideoView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->lambda$instantiateItem$4(Landroid/widget/VideoView;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->lambda$instantiateItem$3(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->lambda$instantiateItem$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->lambda$instantiateItem$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mOnButtonClickListener:Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;->onButtonClick(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$instantiateItem$1(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mOnButtonClickListener:Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;

    if-eqz p0, :cond_8

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;->onButtonClick(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$instantiateItem$2(Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)Z
    .registers 5

    const-string/jumbo p2, "onInfo: what: "

    const-string p4, "MultiFingerPageAdapter"

    invoke-static {p2, p3, p4}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x3

    if-ne p3, p2, :cond_13

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->updatePlayOverOnceFlag()V

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$instantiateItem$3(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .registers 4

    new-instance v0, Lcom/android/launcher/guide/g;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/g;-><init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/widget/VideoView;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method private static synthetic lambda$instantiateItem$4(Landroid/widget/VideoView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method private stopVideo()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mProgressHandler:Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1e

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    return-void
.end method

.method private updatePlayOverOnceFlag()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mIsVideoPlayOverOnce:[Z

    aget-boolean v2, v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v4, v2, v0

    if-eqz v4, :cond_3a

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const v4, 0x3f7ae148  # 0.98f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_39

    iget-object v2, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mIsVideoPlayOverOnce:[Z

    aput-boolean v3, v2, v0

    goto :goto_3a

    :cond_39
    move v1, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3d
    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mProgressHandler:Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mProgressHandler:Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4d
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    instance-of p0, p3, Landroid/view/View;

    if-eqz p0, :cond_9

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public getCount()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/widget/OplusPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem: position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiFingerPageAdapter"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, 0x0

    return-object p0

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0a0546

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a01c8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f110023

    if-eqz p2, :cond_6a

    const/4 v6, 0x1

    if-eq p2, v6, :cond_4c

    goto :goto_84

    :cond_4c
    const v5, 0x7f11000f

    const v7, 0x7f1201f6

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f1201e7

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f12034a

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lcom/android/launcher/guide/i;

    invoke-direct {v3, p0, v6}, Lcom/android/launcher/guide/i;-><init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_84

    :cond_6a
    const v6, 0x7f120316

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f120342

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f120358

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lcom/android/launcher/guide/i;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher/guide/i;-><init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_84
    const-string v1, "android.resource://"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v3, 0x7f0a05bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setAlpha(F)V

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->seekTo(I)V

    new-instance v1, Lcom/android/launcher/guide/h;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher/guide/h;-><init>(Lcom/android/launcher/guide/MultiFingerPageAdapter;Landroid/widget/VideoView;)V

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    if-nez p2, :cond_ce

    new-instance v1, Lcom/android/launcher/guide/b;

    invoke-direct {v1, v3}, Lcom/android/launcher/guide/b;-><init>(Landroid/widget/VideoView;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d1

    :cond_ce
    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    :goto_d1
    iget-object p0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aput-object v3, p0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isPageVideoOverOnce(I)Z
    .registers 3

    if-ltz p1, :cond_a

    const/4 v0, 0x2

    if-ge p1, v0, :cond_a

    iget-object p0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mIsVideoPlayOverOnce:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public onPageSelected(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->playVideo(I)V

    return-void
.end method

.method public pauseVideo()V
    .registers 4

    const-string v0, "MultiFingerPageAdapter"

    const-string/jumbo v1, "pauseVideo"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_14

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_20

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    :cond_20
    iget-object p0, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mProgressHandler:Lcom/android/launcher/guide/MultiFingerPageAdapter$ProgressHandler;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public playVideo(I)V
    .registers 5

    if-ltz p1, :cond_50

    const/4 v0, 0x2

    if-lt p1, v0, :cond_6

    goto :goto_50

    :cond_6
    const-string/jumbo v0, "playVideo: position: "

    const-string v1, "MultiFingerPageAdapter"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/h;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v2, p1, v1

    if-eqz v2, :cond_24

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_24
    iget-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v1, p1, v0

    if-eqz v1, :cond_4d

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    goto :goto_4d

    :cond_30
    iget-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v2, p1, v0

    if-eqz v2, :cond_42

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_42
    iget-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mVideoView:[Landroid/widget/VideoView;

    aget-object v0, p1, v1

    if-eqz v0, :cond_4d

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->updatePlayOverOnceFlag()V

    :cond_50
    :goto_50
    return-void
.end method

.method public release()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/MultiFingerPageAdapter;->stopVideo()V

    return-void
.end method

.method public setOnButtonClickListener(Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/MultiFingerPageAdapter;->mOnButtonClickListener:Lcom/android/launcher/guide/MultiFingerPageAdapter$OnButtonClickListener;

    return-void
.end method
